create table roles(
    id   integer not null auto_increment,
    name varchar(20),
    primary key (id)
) engine = InnoDB;

create table user_roles(
    user_id bigint  not null,
    role_id integer not null,
    primary key (user_id, role_id)
) engine = InnoDB;

create table users(
    id       bigint not null auto_increment,
    email    varchar(50),
    password varchar(120),
    username varchar(20),
    primary key (id)
) engine = InnoDB;

alter table users
    add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username);

alter table users
    add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

alter table user_roles
    add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id);

alter table user_roles
    add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id);