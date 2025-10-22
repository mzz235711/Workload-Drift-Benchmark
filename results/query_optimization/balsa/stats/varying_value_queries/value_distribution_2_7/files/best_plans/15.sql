/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<41 AND p.CommentCount>0 AND p.CommentCount<7 AND u.DownVotes>571 AND u.DownVotes<1601 AND v.CreationDate>'2009-09-07 07:49:39'::timestamp AND v.CreationDate<'2010-09-08 15:58:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-04-08 18:09:48'::timestamp AND b.Date<'2013-04-16 08:02:56'::timestamp;

