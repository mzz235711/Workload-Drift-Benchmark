/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<95 AND p.CommentCount>19 AND p.CommentCount<24 AND u.DownVotes>42 AND u.DownVotes<500 AND v.CreationDate>'2010-01-22 20:41:22'::timestamp AND v.CreationDate<'2012-08-27 20:48:19'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2010-10-07 00:57:32'::timestamp AND b.Date<'2013-06-07 03:35:43'::timestamp;

