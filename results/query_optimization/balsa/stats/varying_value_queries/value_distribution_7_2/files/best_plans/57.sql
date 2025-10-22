/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<168 AND p.CommentCount>21 AND p.CommentCount<27 AND u.DownVotes>33 AND u.DownVotes<612 AND v.CreationDate>'2012-10-26 19:53:05'::timestamp AND v.CreationDate<'2013-12-11 02:08:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-04-08 18:29:26'::timestamp AND b.Date<'2012-08-10 07:52:01'::timestamp;

