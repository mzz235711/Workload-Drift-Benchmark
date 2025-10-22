/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<184 AND p.CommentCount>3 AND p.CommentCount<37 AND u.DownVotes>374 AND u.DownVotes<1229 AND v.CreationDate>'2009-02-09 08:10:58'::timestamp AND v.CreationDate<'2014-07-14 02:40:32'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2013-01-19 19:52:44'::timestamp AND b.Date<'2014-03-21 07:54:44'::timestamp;

