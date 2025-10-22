/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<61 AND p.CommentCount>3 AND p.CommentCount<23 AND u.DownVotes>209 AND u.DownVotes<1841 AND v.CreationDate>'2009-04-18 18:13:01'::timestamp AND v.CreationDate<'2011-11-10 11:42:54'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2010-12-25 17:05:21'::timestamp AND b.Date<'2012-06-25 00:58:56'::timestamp;

