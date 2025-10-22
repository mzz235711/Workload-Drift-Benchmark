/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<156 AND p.CommentCount>3 AND p.CommentCount<12 AND u.DownVotes>247 AND u.DownVotes<1637 AND v.CreationDate>'2010-08-08 06:55:38'::timestamp AND v.CreationDate<'2012-08-14 00:10:53'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2011-08-04 15:55:42'::timestamp AND b.Date<'2013-08-24 12:06:29'::timestamp;

