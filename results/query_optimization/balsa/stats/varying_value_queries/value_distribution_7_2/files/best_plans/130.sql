/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<182 AND p.CommentCount>12 AND p.CommentCount<17 AND u.DownVotes>397 AND u.DownVotes<1214 AND v.CreationDate>'2010-08-15 00:48:41'::timestamp AND v.CreationDate<'2014-08-04 21:31:40'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2010-08-04 14:27:19'::timestamp AND b.Date<'2011-01-24 09:08:03'::timestamp;

