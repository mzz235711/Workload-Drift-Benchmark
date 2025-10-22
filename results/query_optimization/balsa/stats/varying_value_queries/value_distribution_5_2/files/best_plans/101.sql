/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<181 AND p.CommentCount>9 AND p.CommentCount<17 AND u.DownVotes>299 AND u.DownVotes<694 AND v.CreationDate>'2010-10-30 14:04:54'::timestamp AND v.CreationDate<'2012-10-27 07:44:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-05-31 09:39:02'::timestamp AND b.Date<'2013-07-10 19:37:24'::timestamp;

