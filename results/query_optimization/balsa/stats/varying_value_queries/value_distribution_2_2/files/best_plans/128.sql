/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<184 AND p.CommentCount>11 AND p.CommentCount<35 AND u.DownVotes>123 AND u.DownVotes<1538 AND v.CreationDate>'2009-05-13 01:04:34'::timestamp AND v.CreationDate<'2013-01-15 14:28:45'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-07-25 10:30:53'::timestamp AND b.Date<'2013-05-03 18:53:37'::timestamp;

