/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<37 AND p.CommentCount>8 AND p.CommentCount<20 AND u.DownVotes>162 AND u.DownVotes<937 AND v.CreationDate>'2011-08-23 01:27:09'::timestamp AND v.CreationDate<'2013-02-06 22:04:03'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2011-03-30 20:58:33'::timestamp AND b.Date<'2014-02-14 19:12:07'::timestamp;

