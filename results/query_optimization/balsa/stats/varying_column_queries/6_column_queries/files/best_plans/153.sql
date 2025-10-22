/*+ HashJoin(u c v)
 HashJoin(c v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=1 AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=2108 AND u.UpVotes<=25 AND u.CreationDate<='2014-09-02 15:24:43'::timestamp;

