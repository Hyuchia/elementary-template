public class {{app.class_name}} : Gtk.Application {

    public {{app.class_name}} () {
        Object (
            application_id: "{{app.id}}",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var window = new Gtk.ApplicationWindow (this);
        window.title = "{{app.name}}";
        window.set_default_size (800, 600);
        window.show_all ();
    }

    public static int main (string[] args) {
        var app = new {{app.class_name}} ();
        return app.run (args);
    }
}
