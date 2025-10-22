/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<36 AND p.CommentCount>0 AND p.CommentCount<25 AND u.DownVotes>231 AND u.DownVotes<364 AND v.CreationDate>'2009-07-07 14:17:16'::timestamp AND v.CreationDate<'2014-06-19 13:40:35'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2010-10-23 04:28:41'::timestamp AND b.Date<'2011-08-31 18:59:40'::timestamp;

