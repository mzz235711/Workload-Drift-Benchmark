/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<164 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>413 AND u.DownVotes<1607 AND v.CreationDate>'2013-06-22 00:22:02'::timestamp AND v.CreationDate<'2014-01-26 01:50:54'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-02-14 13:14:06'::timestamp AND b.Date<'2013-10-26 06:50:37'::timestamp;

