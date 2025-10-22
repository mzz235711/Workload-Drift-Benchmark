/*+ MergeJoin(b v ph u)
 MergeJoin(v ph u)
 HashJoin(ph u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(u)
 Leading((b (v (ph u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=16 AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2010-10-20 12:41:52'::timestamp AND u.CreationDate<='2014-08-25 01:46:14'::timestamp;

