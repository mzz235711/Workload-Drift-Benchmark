/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>113 AND p.Score<176 AND p.CommentCount>8 AND p.CommentCount<36 AND u.DownVotes>554 AND u.DownVotes<1192 AND v.CreationDate>'2011-04-14 22:52:04'::timestamp AND v.CreationDate<'2014-08-25 22:12:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-02-20 02:41:34'::timestamp AND b.Date<'2014-03-07 22:58:53'::timestamp;

