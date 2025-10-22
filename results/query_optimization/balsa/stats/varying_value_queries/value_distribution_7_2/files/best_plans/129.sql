/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<0 AND p.CommentCount>15 AND p.CommentCount<44 AND u.DownVotes>26 AND u.DownVotes<252 AND v.CreationDate>'2009-12-09 10:31:09'::timestamp AND v.CreationDate<'2012-07-16 23:17:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-10-21 16:02:07'::timestamp AND b.Date<'2014-01-27 09:09:53'::timestamp;

