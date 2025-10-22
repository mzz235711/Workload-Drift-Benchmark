/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>113 AND p.Score<142 AND p.CommentCount>5 AND p.CommentCount<13 AND u.DownVotes>514 AND u.DownVotes<1201 AND v.CreationDate>'2010-09-10 05:15:57'::timestamp AND v.CreationDate<'2012-08-25 12:13:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-12-20 11:43:15'::timestamp AND b.Date<'2011-08-20 05:13:17'::timestamp;

