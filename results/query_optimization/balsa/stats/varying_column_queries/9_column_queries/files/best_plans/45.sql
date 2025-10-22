/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-09-19 05:41:03'::timestamp AND ph.CreationDate<='2014-08-20 16:32:54'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=8906 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-28 11:31:59'::timestamp AND p.CreationDate<='2014-09-05 12:13:54'::timestamp AND u.UpVotes>=0;

