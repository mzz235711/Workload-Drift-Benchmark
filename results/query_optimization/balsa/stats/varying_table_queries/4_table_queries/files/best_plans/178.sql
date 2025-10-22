/*+ HashJoin(ph b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-09-01 23:57:06'::timestamp AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=2342 AND u.DownVotes<=3;

