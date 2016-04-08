class Project extends React.Component {
  render () {
    return (
      <div>
        <div>Name: {this.props.name}</div>
        <div>Start Date: {this.props.startDate}</div>
        <div>End Date: {this.props.endDate}</div>
      </div>
    );
  }
}
