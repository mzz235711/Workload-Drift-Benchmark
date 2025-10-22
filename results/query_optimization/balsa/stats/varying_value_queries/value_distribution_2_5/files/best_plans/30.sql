/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<141 AND p.CommentCount>12 AND p.CommentCount<37 AND u.DownVotes>294 AND u.DownVotes<572 AND v.CreationDate>'2011-02-15 21:25:31'::timestamp AND v.CreationDate<'2012-10-12 04:46:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-11-03 18:01:57'::timestamp AND b.Date<'2013-02-24 02:46:54'::timestamp;

