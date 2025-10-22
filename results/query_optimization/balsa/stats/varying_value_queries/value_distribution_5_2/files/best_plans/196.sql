/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<176 AND p.CommentCount>15 AND p.CommentCount<35 AND u.DownVotes>139 AND u.DownVotes<1749 AND v.CreationDate>'2011-01-15 01:49:14'::timestamp AND v.CreationDate<'2011-06-25 02:23:25'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-07-25 02:51:51'::timestamp AND b.Date<'2012-10-29 04:12:20'::timestamp;

