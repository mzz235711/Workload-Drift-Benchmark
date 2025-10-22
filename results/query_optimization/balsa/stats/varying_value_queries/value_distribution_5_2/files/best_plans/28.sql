/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<183 AND p.CommentCount>3 AND p.CommentCount<38 AND u.DownVotes>377 AND u.DownVotes<1884 AND v.CreationDate>'2011-01-07 22:26:46'::timestamp AND v.CreationDate<'2014-05-28 12:08:08'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2012-08-17 23:33:32'::timestamp AND b.Date<'2014-08-19 16:50:19'::timestamp;

