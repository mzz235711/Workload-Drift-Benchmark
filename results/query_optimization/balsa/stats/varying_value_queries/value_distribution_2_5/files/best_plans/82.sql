/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<59 AND p.CommentCount>10 AND p.CommentCount<19 AND u.DownVotes>155 AND u.DownVotes<594 AND v.CreationDate>'2011-06-28 06:58:43'::timestamp AND v.CreationDate<'2014-01-13 20:53:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2014-03-06 17:48:04'::timestamp AND b.Date<'2014-09-01 10:57:37'::timestamp;

