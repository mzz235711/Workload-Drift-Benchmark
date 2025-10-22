/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>56 AND p.Score<109 AND p.CommentCount>2 AND p.CommentCount<42 AND u.DownVotes>682 AND u.DownVotes<1373 AND v.CreationDate>'2011-11-23 11:34:22'::timestamp AND v.CreationDate<'2014-01-12 07:43:14'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-06-08 07:41:22'::timestamp AND b.Date<'2011-11-17 01:16:11'::timestamp;

