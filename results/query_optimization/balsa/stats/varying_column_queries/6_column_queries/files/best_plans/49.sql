/*+ MergeJoin(v b u ph)
 HashJoin(v b u)
 MergeJoin(b u)
 SeqScan(v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(ph)
 Leading(((v (b u)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-08-03 20:23:34'::timestamp AND ph.CreationDate<='2014-07-02 15:43:19'::timestamp AND u.UpVotes<=283 AND u.CreationDate>='2010-07-19 23:45:56'::timestamp AND u.CreationDate<='2014-08-22 08:31:10'::timestamp AND b.Date='2013-09-02 01:50:57'::timestamp;

