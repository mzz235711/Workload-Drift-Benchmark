/*+ MergeJoin(v u p b)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<95 AND p.CommentCount>14 AND p.CommentCount<34 AND u.DownVotes>226 AND u.DownVotes<872 AND v.CreationDate>'2013-04-01 15:09:45'::timestamp AND v.CreationDate<'2013-12-30 23:41:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2010-08-08 04:30:02'::timestamp AND b.Date<'2013-12-13 17:45:35'::timestamp;

