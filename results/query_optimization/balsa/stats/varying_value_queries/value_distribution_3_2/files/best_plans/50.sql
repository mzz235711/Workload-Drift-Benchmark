/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>103 AND p.Score<145 AND p.CommentCount>9 AND p.CommentCount<27 AND u.DownVotes>252 AND u.DownVotes<1891 AND v.CreationDate>'2011-08-16 23:52:51'::timestamp AND v.CreationDate<'2012-03-30 02:05:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-04-30 13:33:45'::timestamp AND b.Date<'2011-05-12 17:54:05'::timestamp;

