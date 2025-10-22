/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<69 AND p.CommentCount>3 AND p.CommentCount<28 AND u.DownVotes>40 AND u.DownVotes<1147 AND v.CreationDate>'2011-11-29 18:18:06'::timestamp AND v.CreationDate<'2013-04-05 15:42:33'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2012-04-27 18:51:47'::timestamp AND b.Date<'2012-06-03 23:59:55'::timestamp;

