import React from "react";

type Props = {
  props: Array<Props>;
};

function Applications({ props }: Props) {
  return (
    <div>
      <h1>Testing Rails API</h1>
      {props.apps.map((app) => {
        return (
          <div key={app.id}>
            <p>{app.company}</p>
          </div>
        );
      })}
    </div>
  );
}

export default Applications;
