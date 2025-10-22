/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<176 AND p.CommentCount>5 AND p.CommentCount<23 AND u.DownVotes>313 AND u.DownVotes<1789 AND v.CreationDate>'2009-12-19 18:26:53'::timestamp AND v.CreationDate<'2013-10-14 13:57:38'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2013-08-05 04:17:57'::timestamp AND b.Date<'2014-08-29 22:03:15'::timestamp;

