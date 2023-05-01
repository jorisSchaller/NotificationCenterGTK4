use dbus_codegen::{ConnectionType, GenOpts, ServerAccess};
use std::env;
use std::error::Error;
use std::fs;
use std::path::Path;

use lib_flutter_rust_bridge_codegen::*;

const INTROSPECTION_PATH: &str = "dbus/introspection.xml";
const RUST_INPUT: &str = "src/api.rs";
const DART_OUTPUT: &str = "../lib/src/native/bridge_generated.dart";

fn main() -> Result<(), Box<dyn Error>> {
    // Only rerun when the API file changes.
    println!("cargo:rerun-if-changed={}", RUST_INPUT);
    let configs = config_parse(RawOpts {
        rust_input: vec![RUST_INPUT.to_string()],
        dart_output: vec![DART_OUTPUT.to_string()],
        wasm: false,

        c_output: None,
        ..Default::default()
    });
    if let Ok(symbols) = get_symbols_if_no_duplicates(&configs) {
        for config in &configs {
            frb_codegen(config, &symbols).unwrap();
        }
    }

    // let introspection = fs::read_to_string(INTROSPECTION_PATH)?;
    // let out_dir = env::var_os("OUT_DIR").ok_or("OUT_DIR is not set")?;
    //
    // let gen_path = Path::new(&out_dir).join("introspection.rs");
    // let gen_opts = GenOpts {
    //     methodtype: None,
    //     crossroads: true,
    //     skipprefix: None,
    //     serveraccess: ServerAccess::RefClosure,
    //     genericvariant: false,
    //     connectiontype: ConnectionType::Blocking,
    //     propnewtype: false,
    //     interfaces: None,
    //     ..Default::default()
    // };
    //
    // let code = dbus_codegen::generate(&introspection, &gen_opts)?;
    // fs::write(&gen_path, code)?;
    //
    // println!("D-Bus code generated at {gen_path:?}");
    // println!("cargo:rerun-if-changed={INTROSPECTION_PATH}");
    // println!("cargo:rerun-if-changed=build.rs");
    Ok(())
}
