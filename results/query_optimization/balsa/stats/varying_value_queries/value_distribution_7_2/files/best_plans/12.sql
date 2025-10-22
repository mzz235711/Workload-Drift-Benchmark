/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>60 AND p.Score<133 AND p.CommentCount>3 AND p.CommentCount<8 AND u.DownVotes>313 AND u.DownVotes<1733 AND v.CreationDate>'2011-03-17 09:25:09'::timestamp AND v.CreationDate<'2013-08-22 21:20:45'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2012-11-30 17:43:44'::timestamp AND b.Date<'2014-03-17 08:19:54'::timestamp;

