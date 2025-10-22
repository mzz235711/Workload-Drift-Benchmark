/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<90 AND p.CommentCount>2 AND p.CommentCount<7 AND u.DownVotes>157 AND u.DownVotes<1601 AND v.CreationDate>'2010-06-29 23:29:34'::timestamp AND v.CreationDate<'2011-02-14 20:59:02'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-03-19 00:55:14'::timestamp AND b.Date<'2011-11-08 14:32:10'::timestamp;

