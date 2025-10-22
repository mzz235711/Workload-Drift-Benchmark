/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>63 AND p.Score<176 AND p.CommentCount>1 AND p.CommentCount<15 AND u.DownVotes>121 AND u.DownVotes<1904 AND v.CreationDate>'2011-10-25 00:00:17'::timestamp AND v.CreationDate<'2013-11-29 03:45:55'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2011-01-01 06:38:31'::timestamp AND b.Date<'2014-04-04 06:15:38'::timestamp;

