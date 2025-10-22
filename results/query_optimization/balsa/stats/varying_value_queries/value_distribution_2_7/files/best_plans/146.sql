/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<24 AND p.CommentCount>5 AND p.CommentCount<16 AND u.DownVotes>369 AND u.DownVotes<1191 AND v.CreationDate>'2010-02-02 12:13:37'::timestamp AND v.CreationDate<'2012-03-11 03:21:37'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-05-08 03:01:41'::timestamp AND b.Date<'2012-06-09 16:41:52'::timestamp;

