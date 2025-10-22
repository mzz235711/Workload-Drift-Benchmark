/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>42 AND p.Score<124 AND p.CommentCount>5 AND p.CommentCount<19 AND u.DownVotes>19 AND u.DownVotes<826 AND v.CreationDate>'2014-06-14 04:29:24'::timestamp AND v.CreationDate<'2014-08-05 11:48:45'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2013-11-11 13:53:51'::timestamp AND b.Date<'2014-03-18 15:16:57'::timestamp;

