/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<31 AND p.CommentCount>4 AND p.CommentCount<42 AND u.DownVotes>494 AND u.DownVotes<1146 AND v.CreationDate>'2011-06-03 03:19:41'::timestamp AND v.CreationDate<'2014-07-30 02:55:36'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2011-01-10 03:31:20'::timestamp AND b.Date<'2014-06-12 01:45:29'::timestamp;

