/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<166 AND p.CommentCount>2 AND p.CommentCount<29 AND u.DownVotes>345 AND u.DownVotes<1353 AND v.CreationDate>'2010-03-15 03:42:50'::timestamp AND v.CreationDate<'2013-12-23 07:51:55'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2013-01-17 20:34:17'::timestamp AND b.Date<'2013-08-17 08:21:22'::timestamp;

