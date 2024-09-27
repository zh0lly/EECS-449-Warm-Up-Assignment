walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker declare_evil_intent {
    has name: str;

    can return_message with `root entry {
        report {
            "response": self.name + "is evil!"
        };
    }
}

walker declare_good_intent {
    has name: str;

    can return_message with `root entry {
        report {
            "response": self.name + "is good! (for now...)"
        };
    }
}