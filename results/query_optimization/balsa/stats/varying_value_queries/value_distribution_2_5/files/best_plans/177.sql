/*+ NestLoop(u v p b)
 HashJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<101 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>485 AND u.DownVotes<1890 AND v.CreationDate>'2009-09-04 11:26:08'::timestamp AND v.CreationDate<'2014-03-30 11:40:55'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<9 AND b.Date>'2010-08-26 18:38:43'::timestamp AND b.Date<'2014-07-26 03:16:12'::timestamp;

