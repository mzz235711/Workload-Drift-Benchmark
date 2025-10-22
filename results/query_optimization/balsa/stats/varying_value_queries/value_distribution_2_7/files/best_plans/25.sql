/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>75 AND p.Score<119 AND p.CommentCount>11 AND p.CommentCount<37 AND u.DownVotes>100 AND u.DownVotes<224 AND v.CreationDate>'2009-05-13 11:58:19'::timestamp AND v.CreationDate<'2013-10-18 04:28:31'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2011-03-11 15:30:15'::timestamp AND b.Date<'2013-03-25 12:51:25'::timestamp;

