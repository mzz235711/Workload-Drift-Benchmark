/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<63 AND p.CommentCount>16 AND p.CommentCount<26 AND u.DownVotes>333 AND u.DownVotes<1891 AND v.CreationDate>'2010-12-26 08:44:30'::timestamp AND v.CreationDate<'2012-11-27 06:43:22'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-03-10 18:18:34'::timestamp AND b.Date<'2012-10-13 14:36:24'::timestamp;

