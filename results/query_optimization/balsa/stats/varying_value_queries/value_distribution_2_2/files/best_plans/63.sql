/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<76 AND p.CommentCount>16 AND p.CommentCount<23 AND u.DownVotes>138 AND u.DownVotes<330 AND v.CreationDate>'2009-06-22 03:47:31'::timestamp AND v.CreationDate<'2014-08-18 21:21:41'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-11-29 10:31:41'::timestamp AND b.Date<'2012-08-13 13:12:45'::timestamp;

