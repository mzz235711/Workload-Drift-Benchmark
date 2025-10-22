/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<28 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>360 AND u.DownVotes<674 AND v.CreationDate>'2012-08-07 17:18:24'::timestamp AND v.CreationDate<'2013-06-27 19:58:27'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-06-23 04:20:30'::timestamp AND b.Date<'2013-06-16 20:36:59'::timestamp;

