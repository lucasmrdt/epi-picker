// @flow

export type StatusType = 'in progress' | 'default';

export type BreakType = {
    begin: string,
    end: string | null,
};

export type StudentType = {
    login: string,
    breaks: Array<BreakType>,
    comment: string,
    status: StatusType,
    lastUpdate: number,
};
