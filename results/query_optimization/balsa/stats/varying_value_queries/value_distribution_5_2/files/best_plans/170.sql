/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<191 AND p.CommentCount>2 AND p.CommentCount<38 AND u.DownVotes>108 AND u.DownVotes<317 AND v.CreationDate>'2009-04-20 11:25:18'::timestamp AND v.CreationDate<'2011-05-14 14:50:29'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-01-04 00:45:23'::timestamp AND b.Date<'2014-03-12 18:33:25'::timestamp;

