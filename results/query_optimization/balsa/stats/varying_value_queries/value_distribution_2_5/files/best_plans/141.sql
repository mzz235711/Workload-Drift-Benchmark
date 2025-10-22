/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<180 AND p.CommentCount>8 AND p.CommentCount<35 AND u.DownVotes>764 AND u.DownVotes<1162 AND v.CreationDate>'2011-12-25 09:24:51'::timestamp AND v.CreationDate<'2012-12-05 04:57:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-03-12 14:53:04'::timestamp AND b.Date<'2012-02-02 09:42:50'::timestamp;

