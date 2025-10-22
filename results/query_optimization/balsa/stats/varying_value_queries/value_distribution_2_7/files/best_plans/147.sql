/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<92 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>434 AND u.DownVotes<1753 AND v.CreationDate>'2009-10-21 13:54:40'::timestamp AND v.CreationDate<'2012-06-05 22:23:37'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-04-03 10:53:54'::timestamp AND b.Date<'2012-09-01 18:40:17'::timestamp;

