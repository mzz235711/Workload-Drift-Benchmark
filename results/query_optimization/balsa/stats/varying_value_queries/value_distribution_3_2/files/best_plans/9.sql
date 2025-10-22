/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<62 AND p.CommentCount>18 AND p.CommentCount<43 AND u.DownVotes>189 AND u.DownVotes<1613 AND v.CreationDate>'2010-11-14 23:57:50'::timestamp AND v.CreationDate<'2013-07-23 19:01:32'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-09-16 06:08:51'::timestamp AND b.Date<'2013-01-11 13:45:11'::timestamp;

