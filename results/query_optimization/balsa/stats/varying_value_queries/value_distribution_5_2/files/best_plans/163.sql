/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<-3 AND p.CommentCount>13 AND p.CommentCount<22 AND u.DownVotes>69 AND u.DownVotes<1038 AND v.CreationDate>'2011-07-19 14:33:57'::timestamp AND v.CreationDate<'2014-07-20 02:34:27'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2012-07-16 02:03:56'::timestamp AND b.Date<'2014-09-11 03:20:01'::timestamp;

