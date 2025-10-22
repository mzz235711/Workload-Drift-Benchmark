/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<80 AND p.CommentCount>3 AND p.CommentCount<21 AND u.DownVotes>363 AND u.DownVotes<1535 AND v.CreationDate>'2012-02-03 11:28:32'::timestamp AND v.CreationDate<'2013-02-22 19:23:48'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<15 AND b.Date>'2012-07-01 11:34:41'::timestamp AND b.Date<'2013-10-26 18:47:26'::timestamp;

