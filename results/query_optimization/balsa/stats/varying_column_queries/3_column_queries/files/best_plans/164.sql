/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate<='2014-09-09 19:58:29'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-02 00:00:00'::timestamp;

