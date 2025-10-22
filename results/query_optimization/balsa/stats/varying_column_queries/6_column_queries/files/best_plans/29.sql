/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-09-02 22:55:42'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=163 AND u.UpVotes>=0 AND u.UpVotes<=8 AND u.CreationDate>='2010-08-25 22:34:45'::timestamp;

