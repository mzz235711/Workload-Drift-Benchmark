/*+ MergeJoin(ph b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

