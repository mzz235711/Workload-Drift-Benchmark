/*+ NestLoop(u p b v)
 MergeJoin(u p b)
 MergeJoin(u p)
 SeqScan(u)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>109 AND p.Score<147 AND p.CommentCount>7 AND p.CommentCount<41 AND u.DownVotes>311 AND u.DownVotes<1100 AND v.CreationDate>'2010-06-30 03:23:10'::timestamp AND v.CreationDate<'2014-06-15 12:46:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-08-10 23:48:28'::timestamp AND b.Date<'2013-06-18 02:45:13'::timestamp;

