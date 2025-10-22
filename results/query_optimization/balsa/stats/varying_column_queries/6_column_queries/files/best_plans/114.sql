/*+ MergeJoin(v ph u b c)
 HashJoin(v ph u b)
 MergeJoin(ph u b)
 MergeJoin(u b)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((v (ph (u b))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND ph.CreationDate<='2014-07-21 14:50:57'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=6 AND u.UpVotes>=0 AND u.UpVotes<=17;

